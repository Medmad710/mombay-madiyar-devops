FROM alpine:latest
WORKDIR /app
COPY Mombay_Madiyar_info.txt .
ENV STUDENT_NAME="Madiyar"
ENV STUDENT_SURNAME="Mombay"
ENV STUDENT_GROUP="IT2-2304"
ENV STUDENT_ID="37456"
EXPOSE 8080
CMD echo "===============================" && echo "DevOps Student Application" && echo "===============================" && echo "Name: C:\mombay-madiyar-devops{STUDENT_NAME}" && echo "Surname: C:\mombay-madiyar-devops{STUDENT_SURNAME}" && echo "Group: C:\mombay-madiyar-devops{STUDENT_GROUP}" && echo "Student ID: C:\mombay-madiyar-devops{STUDENT_ID}" && echo "Application is running successfully!"
