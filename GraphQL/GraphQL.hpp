namespace tvm { namespace schema {

__interface IGraphQL {

	[[internal, answer_id]]
	bool_t query(string queryStr);

};

}} 