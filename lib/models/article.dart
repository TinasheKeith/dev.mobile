class Articles {
  List<Article> articles;

  Articles(this.articles);

  // factory Articles.fromJson(Map json) {
  //   return Articles(
  //     articles: json
  //   );
  // }
}

class Article {
  final String typeOf;
  final int id;
  final String title;
  final String description;
  final String coverImageUrl;
  final String readablePublishDate;
  final String socialImageUrl;
  // final List<String> tagList;
  final String slug;
  final String url;
  final String canonicalUrl;
  final int commentsCount;
  final int publicReactionsCount;
  // final User user;
  // final Organisation organisation;

  Article({
    this.canonicalUrl,
    this.commentsCount,
    this.coverImageUrl,
    this.description,
    this.id,
    // this.organisation,
    this.publicReactionsCount,
    this.readablePublishDate,
    this.slug,
    this.socialImageUrl,
    // this.tagList,
    this.title,
    this.typeOf,
    this.url,
    // this.user,
  });

  factory Article.fromJson(Map json) {
    // Organisation organisation = Organisation.fromJson(json["organization"]);
    // User user = User.fromJson(json["user"]);

    return Article(
        canonicalUrl: json["canonical_url"],
        commentsCount: json["comments_count"],
        coverImageUrl: json["cover_image"],
        description: json["description"],
        id: json["id"],
        // organisation: organisation,
        // user: user,
        publicReactionsCount: json["public_reactions_count"],
        readablePublishDate: json["readable_publish_date"],
        slug: json["slug"],
        socialImageUrl: json["social_image"],
        // tagList: json["tag_list"],
        title: json["title"],
        typeOf: json["type_of"],
        url: json["url"]);
  }
}

class User {
  final String name;
  final String userName;
  final String twitterUsername;
  final String githubUserName;
  final String websiteUrl;
  final String profileImageUrl;
  final String profileImage90;

  User({
    this.name,
    this.githubUserName,
    this.profileImage90,
    this.profileImageUrl,
    this.twitterUsername,
    this.userName,
    this.websiteUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      githubUserName: json["github_username"],
      profileImage90: json["profile_image_90"],
      profileImageUrl: json["profile_image"],
      twitterUsername: json["twitter_username"],
      userName: json["username"],
      websiteUrl: json["website_url"],
    );
  }
}

class Organisation {
  final String name;
  final String username;
  final String slug;
  final String profileImage;
  final String profileImage90;

  Organisation({
    this.name,
    this.profileImage,
    this.profileImage90,
    this.slug,
    this.username,
  });

  factory Organisation.fromJson(Map json) {
    return Organisation(
        name: json["name"],
        profileImage90: json["profile_image_90"],
        profileImage: json["profile_images"],
        slug: json["slug"],
        username: json["username"]);
  }
}
