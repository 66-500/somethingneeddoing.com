clean:
	rm -rf $(CURDIR)/public/
	mkdir public
	git worktree prune
	rm -rf .git/worktrees/public
	git worktree add -B public public origin/public
	rm -rf $(CURDIR)/public/
    
build: clean	
	hugo

publish: build
	cd public && git add --all && git commit -m "publishing to public branch"
#git push --all

