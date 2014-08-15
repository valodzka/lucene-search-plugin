package org.jenkinsci.plugins.lucene.search;

import hudson.Extension;
import hudson.search.SearchFactory;
import hudson.search.SearchableModelObject;
import hudson.search.Search;

@Extension
public class LuceneSearchFactory extends SearchFactory{
    @Override
    public Search createFor(final SearchableModelObject owner) {
        return new LuceneSearch();
    }
}
