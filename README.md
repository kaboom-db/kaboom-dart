# Kaboom Dart

An asynchronous Kaboom wrapper, written in Dart.

## Usage

To get started, initialize a Kaboom instane:

```dart
// Initializes a new Kaboom instance. 
// URL is optional and will default to https://staging-kaboom.herokuapp.com. 
// Note: if self hosted, you need to include the port.
var client = KaboomClient(url: "https://your-kaboom-url.com");
```

You can then access all the endpoints from this instance.

### Authentication

**Logging in**

```dart
// Returns a LoginToken object containing an access token and a user.
// In this example, it logs in the demo user.
await client.login("demo", "kaboom123");
```

**Sign up**

```dart
// Also returns a LoginToken.
await client.signup("username", "password", "email@email.com");
```

After authenticating, you can access the users token using `client.accessToken`.

### Basic Usage

The basic usage for the package is this: `client.[endpoint]?.[function()];`.

**Examples**

Searching for a comic:

```dart
var t = await client.comics?.getComics(params: {"query": "venom"});
t?.results?.forEach((element) {
  print(element.seriesName);
});
```

Adding an issue:

```dart
var issueJson = "{\"issue_name\": \"New issue name\", \"characters_id\": [1, 2, 3], \"format_id\": \"1\"}";
var t = await client.comics?.addIssue(client.accessToken, issueJson);
print(t?.id);
```