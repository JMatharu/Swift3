struct Blog {
    let name: String?
    let author: String?
    let URL: String?
}

var bobsBlog = Blog(name: "Bob", author: "Bobby", URL: "www.github.com")
var bobsBlog2 = Blog(name: nil, author: "Bobby", URL: "www.github.com")

func getBlogInfo(blog: Blog) {
    //Unwrap
    if let blogName = blog.name, let blogAuthor = blog.author, let blogURL = blog.URL {
        print(blogName)
        print(blogAuthor)
        print(blogURL)
    } else {
        print("Missing Paarmeter")
    }
}

getBlogInfo(blog: bobsBlog)
getBlogInfo(blog: bobsBlog2)


// Better Way - Gaurd Statement
// Early access if there is nil

func getBlogInfoWithGaurd(blog: Blog) {
    guard let blogName = blog.name, let blogAuthor = blog.author, let blogURL = blog.URL else {
        print("At least one of the parameter is missing")
        return
        // exit function
    }
    // if its all good
    
    print("Blog Name is \(blog.name)")
    print("Blog Author is \(blog.author)")
    print("Blog URL is \(blog.URL)")
}

getBlogInfoWithGaurd(blog: bobsBlog)
getBlogInfoWithGaurd(blog: bobsBlog2)
