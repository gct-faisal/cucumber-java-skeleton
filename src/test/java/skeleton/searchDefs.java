package skeleton;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class searchDefs {
    @Steps
    searchSteps seeker;

    @Given("I want to buy (.*)")
    public void buyerWantsToBuy(String article) {
        seeker.opens_etsy_home_page();
    }

    @When("I search for items containing '(.*)'")
    public void searchByKeyword(String keyword) {
        seeker.searches_for_items_containing(keyword);
    }

    @Then("I should only see items related to '(.*)'")
    public void resultsForACategoryAndKeywordInARegion(String keyword) {
        seeker.should_see_items_related_to(keyword);
    }
}