import asyncdispatch, threadpool, os


proc sleepy(fut: Future[int]) = 
    sleep(2000)
    echo "thread"
    fut.complete(42)

var fut: Future[int] = newFuture[int]()
doAssert(not fut.finished)

echo "setting callback"
fut.callback =
    proc (future: Future[int]) =
        echo "resolved: ", future.read

spawn sleepy(fut)
echo "after spawn, waiting..."
sleep(3000)
echo "stoppped waiting..."