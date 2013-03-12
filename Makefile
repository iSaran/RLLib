# This file contains the minimum information needed to compile
# the simulations.
# Saminda Abeyruwan 
# saminda@cs.miami.edu
# To access RLLib documentation, please visit http://saminda.org

CC = g++
CFLAGS = -I. -I./src -I./simulation -Wall -Werror -O3
INCLUDES = Action.h Control.h ControlAlgorithm.h Math.h Policy.h Predictor.h PredictorAlgorithm.h \
		   Projector.h Representation.h Supervised.h SupervisedAlgorithm.h Tiles.h TilesImpl.h Trace.h \
		   Vector.h

#all: Main VectorTest TraceTest LearningAlgorithmTest ActorCriticOnPolicyControlLearnerPendulumTest
#all: Main
#all: ActorCriticOnPolicyControlLearnerPendulumTest
all: Main ActorCriticOnPolicyControlLearnerPendulumTest
Main: 
	$(CC) $(CFLAGS) simulation/Main.cpp -o Main

VectorTest:
	$(CC) $(CFLAGS) test/VectorTest.cpp -o VectorTest

TraceTest:
	$(CC) $(CFLAGS) test/TraceTest.cpp -o TraceTest

LearningAlgorithmTest:
	$(CC) $(CFLAGS) test/LearningAlgorithmTest.cpp -o LearningAlgorithmTest
	
ActorCriticOnPolicyControlLearnerPendulumTest:
	$(CC) $(CFLAGS) test/PendulumOnPolicyLearning.cpp -o ActorCriticOnPolicyControlLearnerPendulumTest 	
	
	
clean:
	rm -f Main
	rm -f VectorTest
	rm -f TraceTest
	rm -f LearningAlgorithmTest
	rm -f ActorCriticOnPolicyControlLearnerPendulumTest