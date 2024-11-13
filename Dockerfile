# Use image Ruby
FROM ruby:3.1

# Install werwick
RUN gem install webrick

# DIR
WORKDIR /usr/src/app

# Copy the files
COPY . .

# Expose port
EXPOSE 8082

# Run app
CMD ["ruby", "app.rb"]
