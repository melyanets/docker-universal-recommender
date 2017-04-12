FROM steveny/predictionio
RUN apt-get -y update; \
	 apt-get install -y \
	 git \
	 maven; \ 
	 git clone https://github.com/apache/mahout.git mahout ;\
	 cd mahout ;\
	 git checkout 00a2883ec69b0807a5486c61dfcc7ef27f35ddc6;\
	 mvn clean install -DskipTests;\
	 git clone https://github.com/actionml/universal-recommender.git ~/ur; \
	 cd ~/ur; \
	 git checkout master 