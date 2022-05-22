import XCTest
@testable import CoreKit

class CoreKitTest: XCTestCase {
  var searchBookAPI: SearchBookAPI!
  
  override func setUp() {
    super.setUp()
    searchBookAPI = SearchBookAPI(isLogging: false)
  }
  override func tearDown() {
    searchBookAPI = nil
    super.tearDown()
  }
  
  func testGoogleSearchBookAPI() {
    let expectation = XCTestExpectation(description: "Response")
    
    let searchRequestDTO = SearchRequestDTO(
      q: "셜록홈즈", startIndex: 1
    )
    
    searchBookAPI.getBook(
      searchRequestDTO: searchRequestDTO) { res, err in
        if let res = res {
          print(res)
        }
        if let err = err {
          print(err)
        }
        expectation.fulfill()
      }
    
    wait(for: [expectation], timeout: 2)
    
  }
}
