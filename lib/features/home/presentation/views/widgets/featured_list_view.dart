import "package:bookly/core/widgets/custom_error_widet.dart";
import "package:bookly/core/widgets/custom_loading_indictor.dart";
import "package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart";
import "package:bookly/features/home/presentation/views/widgets/custom_book_item.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
              if (state is FeaturedBooksSuccess) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: CustomBookImage(),
                );
              } else if (state is FeaturedBooksFailure) {
                return CustomErrorWidget(errMessage: state.errMessage);
              } else {
                return CustomLoadingIndicator();
              }
            },
          ),
        );
      },
    );
  }
}
