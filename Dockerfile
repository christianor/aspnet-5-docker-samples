FROM microsoft/aspnet
ADD Home/samples/latest/HelloMvc /app
WORKDIR /app
RUN dnu restore
EXPOSE 5004
ENTRYPOINT ["dnx", ".", "kestrel"]
