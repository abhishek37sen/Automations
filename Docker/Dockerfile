#Base image
FROM ubuntu
LABEL version="latest" maintainer="Abhishek sen <abhisheksen056@gmail.com>"

#update the image
RUN apt-get update

#install python
RUN apt install -y python3.7.3
RUN apt install -y python3-pip

#install robotframework and seleniumlibrary
RUN pip3 install robotframework
RUN pip3 install robotframework-seleniumlibrary

#The followig are needed for Chrome and Chromedriver installation
RUN apt-get install -y xvfb
RUN apt-get install -y zip
RUN apt-get install -y wget
RUN apt-get install ca-certificates
RUN apt-get install -y libnss3-dev libasound2 libgbm1 libxss1 libcurl3-gnutls libcurl3-nss libcurl4 libappindicator3-1 libindicator7 gconf-service libgconf-2-4 libpango1.0-0 xdg-utils fonts-liberation
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb
RUN rm google-chrome*.deb
RUN wget -N http://chromedriver.storage.googleapis.com/92.0.4515.43/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
#RUN chmod +x chromedriver
RUN chmod 777 /usr/local/bin/chromedriver
#RUN cp /chromedriver /usr/local/bin
RUN rm chromedriver_linux64.zip

#Robot Specific
WORKDIR ../Users/abhi/PycharmProjects/Automation

RUN mkdir /robot
RUN mkdir /results
ENTRYPOINT ["robot"]